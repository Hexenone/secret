import { NtosWindow } from '../layouts';
import { TaxManagerContent } from './TaxManager';

export const NtosTaxManager = (props, context) => {
  return (
    <NtosWindow
      width={400}
      height={600}>
      <NtosWindow.Content scrollable>
        <TaxManagerContent />
      </NtosWindow.Content>
    </NtosWindow>
  );
};
